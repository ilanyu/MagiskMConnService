.class Lcom/qualcomm/uimremoteclient/UimRemoteClientService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->disableVSIM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;


# direct methods
.method constructor <init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$3;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$3;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->stopSelf()V

    return-void
.end method
