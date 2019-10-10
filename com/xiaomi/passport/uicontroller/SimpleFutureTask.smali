.class public Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 14
    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;

    return-object p0
.end method


# virtual methods
.method protected done()V
    .registers 3

    .line 19
    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;

    if-eqz v0, :cond_1b

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$1;-><init>(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_1b
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void
.end method
