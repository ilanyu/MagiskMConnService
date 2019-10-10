.class Lcom/xiaomi/mistatistic/sdk/controller/o$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/os/Looper;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 56
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_7

    goto :goto_28

    .line 58
    :cond_7
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->h()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "handle shaking...."

    .line 59
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Lcom/xiaomi/mistatistic/sdk/controller/o;)Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V

    .line 61
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->g()V

    :cond_28
    :goto_28
    return-void
.end method
