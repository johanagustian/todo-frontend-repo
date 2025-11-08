// Otomatis deteksi environment (Docker atau lokal)
export const host = import.meta.env.VITE_API_URL || "http://localhost:4000";
export const registerRoute = `${host}/api/auth/register`;
export const loginRoute = `${host}/api/auth/login`;
export const createTaskRoute = `${host}/api/route/tasks`;
export const deleteTaskRoute = `${host}/api/route/tasks`;
export const getAllTasksRoute = `${host}/api/route/tasks`;
export const isCompleted = `${host}/api/route/tasks`;
