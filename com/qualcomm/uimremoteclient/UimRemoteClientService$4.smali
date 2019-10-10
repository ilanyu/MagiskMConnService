.class Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;
.super Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
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

    .line 246
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deregisterCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I
    .registers 3

    .line 260
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$000(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    invoke-static {}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->getCallingUid()I

    move-result v0

    # invokes: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->verifyAuthenticity(I)Z
    invoke-static {p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$100(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;I)Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "VSC-UimService"

    const-string v0, "Cannot perform! returning failure"

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 264
    :cond_1a
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    const/4 p1, 0x0

    return p1
.end method

.method public registerCallback(Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;)I
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
    invoke-static {v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$000(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    invoke-static {}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->getCallingUid()I

    move-result v1

    # invokes: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->verifyAuthenticity(I)Z
    invoke-static {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$100(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;I)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p1, "VSC-UimService"

    const-string v0, "Cannot perform! returning failure"

    .line 249
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 252
    :cond_1a
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iput-object p1, v0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mCb:Lcom/qualcomm/uimremoteclient/IUimRemoteClientServiceCallback;

    if-nez p1, :cond_27

    const-string p1, "VSC-UimService"

    const-string v0, "registerCallback() - null cb"

    .line 254
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public uimRemoteApdu(II[B)I
    .registers 9

    .line 308
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
    invoke-static {v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$000(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    invoke-static {}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->getCallingUid()I

    move-result v1

    # invokes: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->verifyAuthenticity(I)Z
    invoke-static {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$100(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    const-string p1, "VSC-UimService"

    const-string p2, "Cannot perform! returning failure"

    .line 309
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 312
    :cond_1a
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I
    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$200(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)I

    move-result v0

    if-lt p1, v0, :cond_39

    const-string p2, "VSC-UimService"

    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sim Slot not supported!"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 316
    :cond_39
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;
    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$300(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_4b

    const-string p1, "VSC-UimService"

    const-string p2, "socket is not connected"

    .line 317
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4b
    const-string v0, "VSC-UimService"

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uimRemoteApdu() - slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; adpuStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;-><init>()V

    .line 325
    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # operator++ for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mToken:I
    invoke-static {v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$408(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setToken(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 326
    invoke-virtual {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setType(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    const/4 v2, 0x2

    .line 327
    invoke-virtual {v0, v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setId(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    const/4 v3, 0x0

    .line 328
    invoke-virtual {v0, v3}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setError(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 331
    new-instance v4, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    invoke-direct {v4}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;-><init>()V

    .line 332
    invoke-virtual {v4, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->setStatus(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    .line 333
    invoke-static {p3}, Lcom/google/protobuf/micro/a;->a([B)Lcom/google/protobuf/micro/a;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->setApduResponse(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    .line 336
    invoke-static {v2, v1, v4}, Lcom/qualcomm/uimremoteclient/UimRemoteClientMsgPacking;->packMsg(IILjava/lang/Object;)[B

    move-result-object p2

    .line 335
    invoke-static {p2}, Lcom/google/protobuf/micro/a;->a([B)Lcom/google/protobuf/micro/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setPayload(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 340
    iget-object p2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$300(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientMsgPacking;->packTag(Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;)[B

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v3
.end method

.method public uimRemoteEvent(II[BI)I
    .registers 9

    .line 269
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mBinder:Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;
    invoke-static {v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$000(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;

    invoke-static {}, Lcom/qualcomm/uimremoteclient/IUimRemoteClientService$Stub;->getCallingUid()I

    move-result v1

    # invokes: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->verifyAuthenticity(I)Z
    invoke-static {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$100(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    const-string p1, "VSC-UimService"

    const-string p2, "Cannot perform! returning failure"

    .line 270
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 273
    :cond_1a
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->simSlots:I
    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$200(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)I

    move-result v0

    if-lt p1, v0, :cond_39

    const-string p2, "VSC-UimService"

    .line 274
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Sim Slot not supported!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 277
    :cond_39
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;
    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$300(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_4b

    const-string p1, "VSC-UimService"

    const-string p2, "socket is not connected"

    .line 278
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4b
    const-string v0, "VSC-UimService"

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uimRemoteEvent() - slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # operator++ for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mToken:I
    invoke-static {v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$408(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setToken(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 287
    invoke-virtual {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setType(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 288
    invoke-virtual {v0, v1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setId(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    const/4 v2, 0x0

    .line 289
    invoke-virtual {v0, v2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setError(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 292
    new-instance v3, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    invoke-direct {v3}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;-><init>()V

    .line 293
    invoke-virtual {v3, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setEvent(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 294
    invoke-static {p3}, Lcom/google/protobuf/micro/a;->a([B)Lcom/google/protobuf/micro/a;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setAtr(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 295
    invoke-virtual {v3, p4}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setErrorCode(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 298
    invoke-static {v1, v1, v3}, Lcom/qualcomm/uimremoteclient/UimRemoteClientMsgPacking;->packMsg(IILjava/lang/Object;)[B

    move-result-object p2

    .line 297
    invoke-static {p2}, Lcom/google/protobuf/micro/a;->a([B)Lcom/google/protobuf/micro/a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setPayload(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 302
    iget-object p2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$4;->this$0:Lcom/qualcomm/uimremoteclient/UimRemoteClientService;

    # getter for: Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->mSocket:[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService;->access$300(Lcom/qualcomm/uimremoteclient/UimRemoteClientService;)[Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-static {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientMsgPacking;->packTag(Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;)[B

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v2
.end method
