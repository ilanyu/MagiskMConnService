.class final Lmiui/cloud/common/XBroadcast$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/XBroadcast;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Lmiui/cloud/common/XBroadcast$BroadcastResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiui/cloud/common/g;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmiui/cloud/common/g;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lmiui/cloud/common/XBroadcast$1;->a:Lmiui/cloud/common/g;

    iput-object p2, p0, Lmiui/cloud/common/XBroadcast$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x1

    .line 51
    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "result received. "

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->a([Ljava/lang/Object;)V

    .line 52
    iget-object p2, p0, Lmiui/cloud/common/XBroadcast$1;->a:Lmiui/cloud/common/g;

    new-instance v0, Lmiui/cloud/common/XBroadcast$BroadcastResult;

    invoke-virtual {p0}, Lmiui/cloud/common/XBroadcast$1;->getResultCode()I

    move-result v1

    invoke-virtual {p0}, Lmiui/cloud/common/XBroadcast$1;->getResultData()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p0, p1}, Lmiui/cloud/common/XBroadcast$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lmiui/cloud/common/XBroadcast$BroadcastResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p2, v0}, Lmiui/cloud/common/g;->a(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lmiui/cloud/common/XBroadcast$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
