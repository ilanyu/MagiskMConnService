.class Lcom/xiaomi/mistatistic/sdk/controller/p$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/q;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/q;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/q;Landroid/os/Looper;)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 45
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_26

    goto :goto_25

    .line 60
    :pswitch_6
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;Z)Z

    .line 62
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$1$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p$1;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    goto :goto_25

    .line 48
    :pswitch_19
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->b()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p$1;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_6
    .end packed-switch
.end method
