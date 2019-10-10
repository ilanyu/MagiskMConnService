.class public abstract Lcom/xiaomi/mistatistic/sdk/controller/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method public static a()Landroid/content/Context;
    .registers 1

    .line 31
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 23
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Landroid/content/Context;

    .line 24
    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Ljava/lang/String;

    .line 25
    sput-object p2, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Ljava/lang/String;

    .line 26
    sput-object p3, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 80
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    .line 92
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 39
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 43
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 4

    .line 47
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Ljava/lang/String;

    return-object v0

    .line 51
    :cond_b
    :try_start_b
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/c$1;

    invoke-direct {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/c$1;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 67
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x3e8

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v0

    const-string v1, "getVersion exception: "

    .line 70
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :goto_36
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .line 76
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    .line 84
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 85
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_b
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Landroid/content/Context;
    .registers 1

    .line 13
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/f;->a:Landroid/content/Context;

    return-object v0
.end method
