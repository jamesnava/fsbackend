import asyncpg
from asyncpg import Pool

# Configuración de la base de datos - REEMPLAZA CON TUS DATOS
DB_CONFIG = {
    "host": "localhost",       # Cambia si es necesario
    "port": 5432,              # Puerto por defecto de PostgreSQL
    "database": "fstools",
    "user": "postgres",        # Cambia según tu usuario
    "password": "12345"     # Cambia según tu contraseña
}

pool: Pool = None


async def get_pool() -> Pool:
    """Retorna el pool de conexiones a la base de datos."""
    global pool
    if pool is None:
        pool = await asyncpg.create_pool(**DB_CONFIG, min_size=2, max_size=10)
    return pool


async def connect_db():
    """Inicializa el pool de conexiones."""
    global pool
    if pool is None:
        pool = await asyncpg.create_pool(**DB_CONFIG, min_size=2, max_size=10)
        print(f"✅ Conectado a PostgreSQL: {DB_CONFIG['host']}:{DB_CONFIG['port']}/{DB_CONFIG['database']}")
    return pool



async def disconnect_db():
    """Cierra el pool de conexiones."""
    global pool
    if pool:
        await pool.close()
        pool = None
        print("🔌 Conexión a PostgreSQL cerrada")


async def execute_query(query: str, *args):
    """Ejecuta una consulta SELECT y retorna los resultados."""
    pool = await get_pool()
    async with pool.acquire() as conn:
        rows = await conn.fetch(query, *args)
        return [dict(row) for row in rows]


async def execute_insert(query: str, *args):
    """Ejecuta una consulta INSERT y retorna el registro insertado."""
    pool = await get_pool()
    async with pool.acquire() as conn:
        row = await conn.fetchrow(query, *args)
        return dict(row) if row else None


async def execute_non_query(query: str, *args):
    """Ejecuta una consulta (UPDATE, DELETE, etc.) sin retornar datos."""
    pool = await get_pool()
    async with pool.acquire() as conn:
        result = await conn.execute(query, *args)
        return result