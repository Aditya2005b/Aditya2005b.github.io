<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aura Earning | Secure Access v5</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&family=Lexend:wght@400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --background-color: #121212;
            --container-bg: rgba(22, 22, 28, 0.75);
            --text-color: #EAEAEA;
            --text-secondary: #A0A0B0;
            --glow-primary: #00c6ff;
            --glow-secondary: #9333ea;
            --glow-accent: #ff2d95;
            --border-color: rgba(255, 255, 255, 0.1);
            --border-hover: rgba(0, 198, 255, 0.5);
            --font-main: 'Lexend', sans-serif;
            --font-body: 'Inter', sans-serif;
            --border-radius: 18px;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: var(--font-body);
            background-color: var(--background-color);
            color: var(--text-color);
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            overflow: hidden;
            position: relative;
        }

        .aurora-background { position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1; pointer-events: none; }
        .aurora { position: absolute; border-radius: 50%; opacity: 0.3; filter: blur(120px); }
        .aurora-1 { width: 50vw; height: 50vw; background: var(--glow-primary); top: 10%; left: 10%; animation: moveAurora1 22s infinite alternate ease-in-out; }
        .aurora-2 { width: 40vw; height: 40vw; background: var(--glow-secondary); bottom: 15%; right: 5%; animation: moveAurora2 28s infinite alternate ease-in-out; }
        .aurora-3 { width: 30vw; height: 30vw; background: var(--glow-accent); top: 40%; right: 25%; animation: moveAurora3 20s infinite alternate ease-in-out; }

        @keyframes moveAurora1 { to { transform: translate(100px, 50px) scale(1.3); } }
        @keyframes moveAurora2 { to { transform: translate(-80px, -60px) scale(0.8); } }
        @keyframes moveAurora3 { to { transform: translate(50px, -100px) scale(1.2); } }

        .auth-container {
            position: relative; z-index: 2; width: 100%; max-width: 420px;
            background: var(--container-bg);
            border: 1px solid var(--border-color);
            border-radius: var(--border-radius);
            backdrop-filter: blur(25px) saturate(180%);
            padding: 3.5rem; text-align: center;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.5);
            transition: all 0.3s ease;
            opacity: 0;
            transform: translateY(20px);
            animation: fadeIn 0.8s forwards cubic-bezier(0.2, 0.8, 0.2, 1);
        }

        @keyframes fadeIn {
            to { opacity: 1; transform: translateY(0); }
        }

        .form-header h2 {
            font-family: var(--font-main); font-size: 2.4rem; font-weight: 600;
            margin-bottom: 1rem;
            background: linear-gradient(90deg, var(--glow-primary), #fff, var(--glow-accent));
            -webkit-background-clip: text; -webkit-text-fill-color: transparent;
        }

        .form-header p {
            font-size: 1.1rem; color: var(--text-secondary);
            margin-bottom: 3.5rem; line-height: 1.6;
        }
        
        .btn-google {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            padding: 0.9rem 1.5rem;
            border: 1px solid var(--border-color);
            border-radius: 12px;
            background-color: transparent;
            color: var(--text-color);
            font-family: var(--font-body);
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
        }

        .btn-google:hover {
            transform: scale(1.03);
            border-color: var(--border-hover);
            background-color: rgba(255, 255, 255, 0.03);
            box-shadow: 0 0 20px rgba(0, 198, 255, 0.2);
        }
        
        .btn-google:active {
            transform: scale(0.98);
        }

        .google-icon {
            width: 24px;
            height: 24px;
            margin-right: 12px;
        }

        .success-message {
            animation: fadeIn 0.5s forwards;
        }

        @media (max-width: 480px) {
            .auth-container { padding: 2.5rem 2rem; margin: 1rem; }
            .form-header h2 { font-size: 2rem; }
            .form-header p { font-size: 1rem; }
        }
    </style>
</head>
<body>
    <div class="aurora-background">
        <div class="aurora aurora-1"></div>
        <div class="aurora aurora-2"></div>
        <div class="aurora aurora-3"></div>
    </div>

    <div class="auth-container" id="auth-container">
        <div id="login-view">
            <div class="form-header">
                <h2>Aura Earning</h2>
                <p>Accede de forma segura para gestionar tu potencial.</p>
            </div>
            <button class="btn-google" id="google-login-btn">
                <svg class="google-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="48px" height="48px">
                    <path fill="#FFC107" d="M43.611,20.083H42V20H24v8h11.303c-1.649,4.657-6.08,8-11.303,8c-6.627,0-12-5.373-12-12s5.373-12,12-12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C12.955,4,4,12.955,4,24s8.955,20,20,20s20-8.955,20-20C44,22.659,43.862,21.35,43.611,20.083z"/>
                    <path fill="#FF3D00" d="M6.306,14.691l6.571,4.819C14.655,15.108,18.961,12,24,12c3.059,0,5.842,1.154,7.961,3.039l5.657-5.657C34.046,6.053,29.268,4,24,4C16.318,4,9.656,8.337,6.306,14.691z"/>
                    <path fill="#4CAF50" d="M24,44c5.166,0,9.86-1.977,13.409-5.192l-6.19-5.238C29.211,35.091,26.715,36,24,36c-5.222,0-9.651-3.356-11.303-7.962l-6.571,4.819C9.656,39.663,16.318,44,24,44z"/>
                    <path fill="#1976D2" d="M43.611,20.083H42V20H24v8h11.303c-0.792,2.237-2.231,4.166-4.087,5.571l6.19,5.238C44.982,36.351,48,30.607,48,24C48,22.659,47.862,21.35,47.611,20.083z"/>
                </svg>
                <span>Continuar con Google</span>
            </button>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2"></script>
    <script>
        // --- Supabase Client Setup ---
        const supabaseUrl = 'https://jwbbbagarnqjvlvgkreg.supabase.co';
        const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp3YmJiYWdhcm5xanZsdmdrcmVnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTY0NTE1MzEsImV4cCI6MjA3MjAyNzUzMX0.ioRBwk2r08zDg8q5LzAakMFpPYdEHnOKSGJQkZSeb30';
        const { createClient } = supabase;
        const _supabase = createClient(supabaseUrl, supabaseKey);

        // --- UI Elements ---
        const authContainer = document.getElementById('auth-container');
        const googleLoginBtn = document.getElementById('google-login-btn');

        // --- Authentication Logic ---
        async function signInWithGoogle() {
            googleLoginBtn.disabled = true;
            
            const { data, error } = await _supabase.auth.signInWithOAuth({
                provider: 'google',
                options: {
                    redirectTo: 'https://aditya2005b.github.io/'
                }
            });

            if (error) {
                console.error("Error signing in with Google:", error);
                alert(`Error: ${error.message}`);
                googleLoginBtn.disabled = false;
            }
        }

        function showSuccessMessage(user) {
            const userName = user.user_metadata?.full_name || user.email;
            authContainer.innerHTML = `
                <div class="form-header success-message">
                    <h2>Bienvenido,</h2>
                    <p style="font-size: 1.2rem; color: var(--text-color); margin-bottom: 2rem;">${userName}</p>
                    <p style="color: var(--text-secondary);">Serás redirigido a tu panel de control en breve.</p>
                </div>`;
            
            setTimeout(() => { 
                window.location.href = 'https://aditya2005b.github.io/'; 
            }, 3000);
        }

        // --- Event Listeners ---
        googleLoginBtn.addEventListener('click', signInWithGoogle);

        // --- Handle Auth State Changes ---
        _supabase.auth.onAuthStateChange((event, session) => {
            if (event === 'SIGNED_IN' && session) {
                // If the user is signed in, redirect them immediately.
                // The showSuccessMessage is good for UX but the redirect can happen sooner.
                window.location.href = 'https://aditya2005b.github.io/';
            }
        });

    </script>
</body>
</html>
