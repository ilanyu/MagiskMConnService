.class Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/sync/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/xiaomi/micloudsdk/sync/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/sync/a;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;->b:Lcom/xiaomi/micloudsdk/sync/a;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 3

    .line 80
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
