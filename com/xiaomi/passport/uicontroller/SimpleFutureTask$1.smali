.class Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$1;->a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$1;->a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->a(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$1;->a:Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;->a(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V

    return-void
.end method
