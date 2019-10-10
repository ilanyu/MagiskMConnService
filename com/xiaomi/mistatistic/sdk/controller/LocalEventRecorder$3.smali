.class final Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "LER"

    const-string v0, "IStatService connected"

    .line 132
    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p2}, Lcom/xiaomi/xmsf/push/service/b$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/b;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    .line 134
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->c()Lcom/xiaomi/xmsf/push/service/b;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 135
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3$1;

    invoke-direct {p2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$3;)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    :cond_20
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "LER"

    const-string v0, "IStatService has unexpectedly disconnected"

    .line 125
    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 126
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;

    const/4 p1, 0x0

    .line 127
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Z)Z

    return-void
.end method
