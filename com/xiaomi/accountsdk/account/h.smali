.class public Lcom/xiaomi/accountsdk/account/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "staging_sp"

.field private static final b:Ljava/lang/String; = "is_staging"

.field private static c:Ljava/lang/String; = null

.field private static volatile d:Ljava/lang/String; = null

.field private static volatile e:Ljava/lang/String; = null

.field private static f:Z = false

.field private static volatile g:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile h:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .registers 3

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    if-eqz p0, :cond_9

    .line 89
    :try_start_5
    sput-object p0, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_11

    .line 90
    monitor-exit v0

    return-void

    .line 87
    :cond_9
    :try_start_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application == null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception p0

    .line 85
    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 4

    .line 105
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/h;->b(Landroid/content/Context;)V

    const-string v0, "staging_sp"

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "is_staging"

    .line 108
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/XMPassportUserAgent;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 67
    sput-boolean p0, Lcom/xiaomi/accountsdk/account/h;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    .line 114
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/h;->b(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->f()Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/xiaomi/accountsdk/account/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/app/Application;)V
    .registers 3

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    if-eqz p0, :cond_d

    .line 97
    :try_start_5
    sget-object v1, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;

    if-nez v1, :cond_b

    .line 98
    sput-object p0, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    .line 100
    :cond_b
    monitor-exit v0

    return-void

    .line 95
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application == null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_15

    :catchall_15
    move-exception p0

    .line 93
    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_f

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/accountsdk/account/h;->h:Landroid/content/Context;

    return-void

    .line 141
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "globalContext == null or globalContext.getApplicationContext() == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    .line 47
    sput-object p0, Lcom/xiaomi/accountsdk/account/h;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/h;->d:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    .line 55
    :try_start_3
    sput-object p0, Lcom/xiaomi/accountsdk/account/h;->d:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 56
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    .line 54
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/h;->e:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    .line 63
    :try_start_3
    sput-object p0, Lcom/xiaomi/accountsdk/account/h;->e:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 64
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    .line 62
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e()Landroid/app/Application;
    .registers 3

    const-class v0, Lcom/xiaomi/accountsdk/account/h;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-boolean v1, Lcom/xiaomi/accountsdk/account/h;->f:Z

    if-eqz v1, :cond_14

    sget-object v1, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;

    if-eqz v1, :cond_c

    goto :goto_14

    .line 79
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_14
    :goto_14
    sget-object v1, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 77
    monitor-exit v0

    throw v1
.end method

.method static f()Z
    .registers 4

    .line 119
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/xiaomi_account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 120
    invoke-static {}, Lcom/xiaomi/accountsdk/account/h;->g()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_30

    const-string v2, "com.xiaomi.account"

    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    const-string v0, "staging_sp"

    .line 124
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_staging"

    .line 125
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2e
    const/4 v2, 0x1

    :cond_2f
    return v2

    :cond_30
    return v0
.end method

.method private static g()Landroid/content/Context;
    .registers 1

    .line 132
    sget-object v0, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 133
    sget-object v0, Lcom/xiaomi/accountsdk/account/h;->g:Landroid/app/Application;

    return-object v0

    .line 135
    :cond_7
    sget-object v0, Lcom/xiaomi/accountsdk/account/h;->h:Landroid/content/Context;

    return-object v0
.end method
