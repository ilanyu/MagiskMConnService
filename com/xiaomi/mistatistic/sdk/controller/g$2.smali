.class Lcom/xiaomi/mistatistic/sdk/controller/g$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/h;Landroid/os/Looper;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 84
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3ff

    if-eq p1, v0, :cond_7

    goto :goto_13

    .line 86
    :cond_7
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    :goto_13
    return-void
.end method
