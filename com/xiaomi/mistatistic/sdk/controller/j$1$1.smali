.class Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/j$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Landroid/content/ServiceConnection;

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .registers 4

    .line 568
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v0, 0x1

    .line 572
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->a:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/xiaomi/xmsf/push/service/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/a;

    move-result-object v1

    .line 573
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->d:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/xmsf/push/service/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    invoke-interface {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Z)Z

    const-string v1, "connected, do remote http post"

    .line 576
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_36

    goto :goto_49

    :catch_36
    move-exception v1

    const-string v2, "error while uploading the logs by IPC."

    .line 579
    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Z)Z

    :goto_49
    return-void
.end method
