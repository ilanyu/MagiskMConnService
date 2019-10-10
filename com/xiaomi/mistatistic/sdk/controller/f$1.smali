.class Lcom/xiaomi/mistatistic/sdk/controller/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 41
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;Z)Z

    .line 42
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/mistatistic/sdk/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 47
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;Z)Z

    .line 48
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method
