.class Lcom/xiaomi/mistatistic/sdk/controller/p$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p$1;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->e()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/q;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Lcom/xiaomi/mistatistic/sdk/controller/q;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 66
    :cond_15
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    :cond_1d
    return-void
.end method
