.class public Lcom/xiaomi/mistatistic/sdk/controller/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/d$a;,
        Lcom/xiaomi/mistatistic/sdk/controller/d$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/controller/d;

.field private static b:Lcom/xiaomi/mistatistic/sdk/controller/d;


# instance fields
.field private volatile c:Landroid/os/Handler;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/mistatistic/sdk/controller/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/d$b;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->start()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/d;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/controller/d;
    .registers 3

    const-class v0, Lcom/xiaomi/mistatistic/sdk/controller/d;

    monitor-enter v0

    .line 16
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    if-nez v1, :cond_10

    .line 17
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/d;

    const-string v2, "local_job_dispatcher"

    invoke-direct {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    .line 19
    :cond_10
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/d;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static declared-synchronized b()Lcom/xiaomi/mistatistic/sdk/controller/d;
    .registers 3

    const-class v0, Lcom/xiaomi/mistatistic/sdk/controller/d;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;

    if-nez v1, :cond_10

    .line 24
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/d;

    const-string v2, "remote_job_dispatcher"

    invoke-direct {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;

    .line 26
    :cond_10
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/d;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 40
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    if-nez v1, :cond_d

    .line 43
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 45
    :cond_d
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/d$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/d$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 65
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d;->c:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/d$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/d$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    :cond_f
    const-string p1, "drop the job as handler is not ready."

    const/4 p2, 0x0

    .line 78
    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method
