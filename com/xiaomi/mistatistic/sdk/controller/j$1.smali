.class final Lcom/xiaomi/mistatistic/sdk/controller/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/j$b;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 552
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 553
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Z)Z
    .registers 2

    .line 552
    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->e:Z

    return p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 568
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;

    invoke-direct {v0, p0, p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "error while perform IPC connection."

    const/4 v0, 0x0

    .line 557
    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    iget-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->e:Z

    if-nez p1, :cond_14

    .line 559
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    invoke-interface {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    const-string p1, "disconnected, remote http post hasn\'t not processed"

    .line 560
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
