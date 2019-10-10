.class public abstract Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/xmsf/push/service/b; = null

.field private static volatile b:Z = false

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    .line 122
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;
    .registers 1

    .line 28
    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/data/a;)V
    .registers 4

    .line 39
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "LER"

    const-string v0, "mistats is not initialized properly."

    .line 41
    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_e
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string p0, "LER"

    const-string v0, "disable local event upload for CTA build"

    .line 46
    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_1c
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->c()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "LER"

    const-string v1, "insert event use systemstatsvc"

    .line 51
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;-><init>(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void

    .line 61
    :cond_36
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;->d()I

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "LER"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabled local event upload, event category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_67
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;-><init>(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    .line 66
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Lcom/xiaomi/mistatistic/sdk/controller/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()V

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "mistat_basic"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mistat_session"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mistat_pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mistat_pv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "mistat_session_extra"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 28
    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    return p0
.end method

.method static synthetic b()Landroid/content/ServiceConnection;
    .registers 1

    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    if-nez v0, :cond_31

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.StatService"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    const-string p0, "LER"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind StatSystemService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/data/a;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    return-void
.end method

.method static synthetic c()Lcom/xiaomi/xmsf/push/service/b;
    .registers 1

    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 5

    .line 103
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    return-void
.end method

.method private static c(Lcom/xiaomi/mistatistic/sdk/data/a;)V
    .registers 3

    .line 76
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b(Landroid/content/Context;)V

    .line 78
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    if-eqz v0, :cond_19

    .line 79
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a:Lcom/xiaomi/xmsf/push/service/b;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/xmsf/push/service/b;->a(Ljava/lang/String;)V

    goto :goto_2e

    .line 83
    :cond_19
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_26

    .line 84
    :try_start_1c
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    goto :goto_2e

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    :try_start_25
    throw p0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    const-string v0, "LER"

    const-string v1, "insertEventUseSystemService exception: "

    .line 89
    invoke-static {v0, v1, p0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method static synthetic d()Ljava/lang/Object;
    .registers 1

    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .registers 1

    .line 28
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c:Ljava/util/List;

    return-object v0
.end method
