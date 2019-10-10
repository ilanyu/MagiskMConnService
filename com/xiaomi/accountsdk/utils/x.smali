.class public Lcom/xiaomi/accountsdk/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SyncServerTimeExecutor"

.field private static final b:Ljava/lang/String;

.field private static final c:Lcom/xiaomi/accountsdk/utils/x;


# instance fields
.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/lang/Object;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/x;->b:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/x;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/x;->c:Lcom/xiaomi/accountsdk/utils/x;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/x;->d:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/x;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/x;
    .registers 1

    .line 29
    sget-object v0, Lcom/xiaomi/accountsdk/utils/x;->c:Lcom/xiaomi/accountsdk/utils/x;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .line 16
    sget-object v0, Lcom/xiaomi/accountsdk/utils/x;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Date;)V
    .registers 6

    if-nez p1, :cond_a

    const-string p1, "SyncServerTimeExecutor"

    const-string v0, "server date is null"

    .line 58
    invoke-static {p1, v0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_a
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 62
    iget-object p1, p0, Lcom/xiaomi/accountsdk/utils/x;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 63
    :try_start_16
    iget-wide v2, p0, Lcom/xiaomi/accountsdk/utils/x;->f:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1e

    .line 64
    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/x;->f:J

    .line 66
    :cond_1e
    monitor-exit p1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public b()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/x;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/accountsdk/utils/SyncServerTimeExecutor$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/utils/SyncServerTimeExecutor$1;-><init>(Lcom/xiaomi/accountsdk/utils/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()J
    .registers 5

    .line 50
    iget-wide v0, p0, Lcom/xiaomi/accountsdk/utils/x;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 53
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/utils/x;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method
