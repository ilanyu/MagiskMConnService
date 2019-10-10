.class Lcom/xiaomi/mistatistic/sdk/controller/d$b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Ljava/lang/String;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;Landroid/os/Handler;)Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_11
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 96
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 97
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    .line 101
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_63

    if-eqz v1, :cond_5f

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    .line 106
    :try_start_54
    invoke-interface {v1}, Lcom/xiaomi/mistatistic/sdk/controller/d$a;->a()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_48

    :catch_58
    move-exception v1

    const-string v2, "error while executing job."

    .line 108
    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 112
    :cond_5f
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void

    :catchall_63
    move-exception v1

    .line 101
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method
