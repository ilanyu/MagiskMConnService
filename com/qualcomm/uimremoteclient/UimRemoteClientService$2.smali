.class Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;
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

    .line 111
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const-string v0, "VSC-UimService"

    const-string v1, "handleMessage()"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    if-nez v0, :cond_15

    const-string p1, "VSC-UimService"

    const-string v0, "handleMessage() - null mCb"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_15
    :try_start_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 121
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 122
    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    move-result-object v0

    const-string v1, "VSC-UimService"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage() - token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getToken()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", slot id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b1

    .line 130
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_136

    const-string p1, "VSC-UimService"

    goto :goto_aa

    .line 138
    :pswitch_78
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getPayload()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/micro/a;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v1, v1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->getStatus()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteApduResponse(II)V

    goto/16 :goto_134

    .line 133
    :pswitch_91
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getPayload()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/micro/a;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v1, v1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->getResponse()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteEventResponse(II)V

    goto/16 :goto_134

    :goto_aa
    const-string v0, "unexpected msg id"

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_134

    .line 144
    :cond_b1
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10c

    .line 145
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_13e

    const-string p1, "VSC-UimService"

    goto :goto_106

    .line 164
    :pswitch_c2
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteResetIndication(I)V

    goto :goto_134

    .line 161
    :pswitch_ca
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemotePowerDownIndication(I)V

    goto :goto_134

    .line 158
    :pswitch_d2
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemotePowerUpIndication(I)V

    goto :goto_134

    .line 155
    :pswitch_da
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteDisconnectIndication(I)V

    goto :goto_134

    .line 152
    :pswitch_e2
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteConnectIndication(I)V

    goto :goto_134

    .line 148
    :pswitch_ea
    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getPayload()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/micro/a;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v1, v1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    invoke-virtual {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->getApduCommand()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/micro/a;->c()[B

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;->uimRemoteApduIndication(I[B)V

    goto :goto_134

    :goto_106
    const-string v0, "unexpected msg id"

    .line 167
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    :cond_10c
    const-string p1, "VSC-UimService"

    const-string v0, "unexpected msg type"

    .line 170
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_113} :catch_114

    goto :goto_134

    :catch_114
    const-string p1, "VSC-UimService"

    const-string v0, "error occured when parsing the resp/ind"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/vsimcore/utils/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_134

    .line 176
    invoke-static {}, Lcom/miui/vsimcore/base/VsimCoreApp;->a()Lcom/miui/vsimcore/base/VsimCoreApp;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_134

    .line 177
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$2;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    invoke-virtual {p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->disableVSIM()V

    :cond_134
    :goto_134
    return-void

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_91
        :pswitch_78
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x2
        :pswitch_ea
        :pswitch_e2
        :pswitch_da
        :pswitch_d2
        :pswitch_ca
        :pswitch_c2
    .end packed-switch
.end method
