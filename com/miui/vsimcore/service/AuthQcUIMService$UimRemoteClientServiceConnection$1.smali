.class Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection$1;->this$1:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection$1;->this$1:Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;

    iget-object v0, v0, Lcom/miui/vsimcore/service/AuthQcUIMService$UimRemoteClientServiceConnection;->this$0:Lcom/miui/vsimcore/service/AuthQcUIMService;

    # invokes: Lcom/miui/vsimcore/service/AuthQcUIMService;->releaseService()V
    invoke-static {v0}, Lcom/miui/vsimcore/service/AuthQcUIMService;->access$300(Lcom/miui/vsimcore/service/AuthQcUIMService;)V

    return-void
.end method
