.class final Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 107
    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 108
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$2;->a:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->b()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 109
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Z)Z

    const/4 v0, 0x0

    .line 110
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    const-string v0, "LER"

    const-string v1, "unbind StatSystemService success"

    .line 111
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_1f
    const-string v0, "LER"

    const-string v1, "StatSystemService is already disconnected"

    .line 113
    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    const-string v1, ""

    .line 116
    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2d
    return-void
.end method
