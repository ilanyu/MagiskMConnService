.class public final Lcom/xiaomi/accountsdk/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MiuiCUserIdUtil"

.field private static final b:Ljava/lang/String; = "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

.field private static final c:Ljava/lang/String; = "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

.field private static final d:Ljava/lang/String; = "com.xiaomi.account"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/o;->e:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/accountsdk/utils/o;->f:Landroid/accounts/Account;

    return-void

    .line 30
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/utils/o;)Landroid/accounts/Account;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/xiaomi/accountsdk/utils/o;->f:Landroid/accounts/Account;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    .line 51
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/i;->a()Lcom/xiaomi/passport/servicetoken/i;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/i;->b()Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/o;->e:Landroid/content/Context;

    const-string v2, "passportapi"

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 55
    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->l:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 9

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/o;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    :goto_16
    move-object v4, v0

    goto :goto_1b

    :cond_18
    const-string v0, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    goto :goto_16

    .line 61
    :goto_1b
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/c;-><init>()V

    .line 62
    new-instance v7, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/utils/o;->e:Landroid/content/Context;

    const-string v5, "com.xiaomi.account"

    move-object v1, v7

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;-><init>(Lcom/xiaomi/accountsdk/utils/o;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    .line 73
    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->a()Z

    .line 76
    :try_start_2f
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_35} :catch_3f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_35} :catch_36

    return-object v0

    :catch_36
    move-exception v0

    const-string v1, "MiuiCUserIdUtil"

    const-string v2, "getCUserId"

    .line 80
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    :catch_3f
    move-exception v0

    const-string v1, "MiuiCUserIdUtil"

    const-string v2, "getCUserId"

    .line 78
    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 42
    :try_start_a
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/o;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 44
    :catch_f
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiCUserIdUtil#getCUserId() should NOT be called on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
