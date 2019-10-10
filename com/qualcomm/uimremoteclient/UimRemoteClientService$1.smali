.class Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClientService;
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

    .line 78
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string v0, "VSC-UimService"

    const-string v1, "handleMessage()"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    if-nez v0, :cond_15

    const-string p1, "VSC-UimService"

    const-string v0, "handleMessage() - null mCb"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_15
    :try_start_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 89
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_58

    goto :goto_57

    :pswitch_1d
    const-string p1, "VSC-UimService"

    const-string v1, "EVENT_RADIO_NOT_AVAILABLE"

    .line 98
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object p1, p1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteRadioStateIndication(II)V

    goto :goto_57

    :pswitch_2d
    const-string p1, "VSC-UimService"

    const-string v1, "EVENT_RADIO_AVAILABLE"

    .line 91
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/miui/vsimcore/utils/RadioStateCompat;->a()Lcom/miui/vsimcore/utils/RadioStateCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/vsimcore/utils/RadioStateCompat;->a(I)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 93
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object p1, p1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteRadioStateIndication(II)V

    goto :goto_57

    .line 95
    :cond_47
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object p1, p1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteRadioStateIndication(II)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4f} :catch_50

    goto :goto_57

    :catch_50
    const-string p1, "VSC-UimService"

    const-string v0, "error occured when parsing the resp/ind"

    .line 106
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method
