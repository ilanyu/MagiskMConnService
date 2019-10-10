.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemoteEventReq"
.end annotation


# static fields
.field public static final APDU_TIMEOUT_FIELD_NUMBER:I = 0x7

.field public static final ATR_FIELD_NUMBER:I = 0x2

.field public static final DISABLE_ALL_POLLING_FIELD_NUMBER:I = 0x8

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x4

.field public static final EVENT_FIELD_NUMBER:I = 0x1

.field public static final TRANSPORT_FIELD_NUMBER:I = 0x5

.field public static final UIM_REMOTE_CARD_ERROR_CMD_TIMEOUT:I = 0x2

.field public static final UIM_REMOTE_CARD_ERROR_NO_LINK_EST:I = 0x1

.field public static final UIM_REMOTE_CARD_ERROR_POWER_DOWN:I = 0x3

.field public static final UIM_REMOTE_CARD_ERROR_POWER_DOWN_TELECOM:I = 0x4

.field public static final UIM_REMOTE_CARD_ERROR_UNKNOWN:I = 0x0

.field public static final UIM_REMOTE_STATUS_CARD_ERROR:I = 0x4

.field public static final UIM_REMOTE_STATUS_CARD_INSERTED:I = 0x2

.field public static final UIM_REMOTE_STATUS_CARD_REMOVED:I = 0x3

.field public static final UIM_REMOTE_STATUS_CARD_RESET:I = 0x5

.field public static final UIM_REMOTE_STATUS_CARD_WAKEUP:I = 0x6

.field public static final UIM_REMOTE_STATUS_CONN_AVAILABLE:I = 0x1

.field public static final UIM_REMOTE_STATUS_CONN_UNAVAILABLE:I = 0x0

.field public static final UIM_REMOTE_TRANSPORT_BLUETOOTH:I = 0x1

.field public static final UIM_REMOTE_TRANSPORT_IP:I = 0x2

.field public static final UIM_REMOTE_TRANSPORT_OTHER:I = 0x0

.field public static final UIM_REMOTE_USAGE_NORMAL:I = 0x1

.field public static final UIM_REMOTE_USAGE_REDUCED:I = 0x0

.field public static final USAGE_FIELD_NUMBER:I = 0x6

.field public static final WAKEUP_SUPPORT_FIELD_NUMBER:I = 0x3


# instance fields
.field private apduTimeout_:I

.field private atr_:Lcom/google/protobuf/micro/a;

.field private cachedSize:I

.field private disableAllPolling_:I

.field private errorCode_:I

.field private event_:I

.field private hasApduTimeout:Z

.field private hasAtr:Z

.field private hasDisableAllPolling:Z

.field private hasErrorCode:Z

.field private hasEvent:Z

.field private hasTransport:Z

.field private hasUsage:Z

.field private hasWakeupSupport:Z

.field private transport_:I

.field private usage_:I

.field private wakeupSupport_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 247
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->event_:I

    .line 294
    sget-object v1, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->atr_:Lcom/google/protobuf/micro/a;

    .line 311
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->wakeupSupport_:Z

    .line 328
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->errorCode_:I

    .line 345
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->transport_:I

    .line 362
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->usage_:I

    .line 379
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->apduTimeout_:I

    .line 396
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->disableAllPolling_:I

    const/4 v0, -0x1

    .line 457
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 559
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    .line 411
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearEvent()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 412
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearAtr()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 413
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearWakeupSupport()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 414
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearErrorCode()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 415
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearTransport()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 416
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearUsage()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 417
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearApduTimeout()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    .line 418
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->clearDisableAllPolling()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    const/4 v0, -0x1

    .line 419
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->cachedSize:I

    return-object p0
.end method

.method public clearApduTimeout()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasApduTimeout:Z

    .line 389
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->apduTimeout_:I

    return-object p0
.end method

.method public clearAtr()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasAtr:Z

    .line 304
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->atr_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public clearDisableAllPolling()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasDisableAllPolling:Z

    .line 406
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->disableAllPolling_:I

    return-object p0
.end method

.method public clearErrorCode()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasErrorCode:Z

    .line 338
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->errorCode_:I

    return-object p0
.end method

.method public clearEvent()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasEvent:Z

    .line 287
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->event_:I

    return-object p0
.end method

.method public clearTransport()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasTransport:Z

    .line 355
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->transport_:I

    return-object p0
.end method

.method public clearUsage()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasUsage:Z

    .line 372
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->usage_:I

    return-object p0
.end method

.method public clearWakeupSupport()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 2

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasWakeupSupport:Z

    .line 321
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->wakeupSupport_:Z

    return-object p0
.end method

.method public getApduTimeout()I
    .registers 2

    .line 380
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->apduTimeout_:I

    return v0
.end method

.method public getAtr()Lcom/google/protobuf/micro/a;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->atr_:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .line 460
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->cachedSize:I

    if-gez v0, :cond_7

    .line 462
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getSerializedSize()I

    .line 464
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->cachedSize:I

    return v0
.end method

.method public getDisableAllPolling()I
    .registers 2

    .line 397
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->disableAllPolling_:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->errorCode_:I

    return v0
.end method

.method public getEvent()I
    .registers 2

    .line 279
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->event_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 470
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getEvent()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 474
    :cond_11
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasAtr()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    .line 476
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getAtr()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v0

    add-int/2addr v1, v0

    .line 478
    :cond_21
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasWakeupSupport()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    .line 480
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getWakeupSupport()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 482
    :cond_31
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    .line 484
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getErrorCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 486
    :cond_41
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasTransport()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x5

    .line 488
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getTransport()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 490
    :cond_51
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasUsage()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x6

    .line 492
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getUsage()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 494
    :cond_61
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasApduTimeout()Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x7

    .line 496
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getApduTimeout()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->i(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 498
    :cond_71
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasDisableAllPolling()Z

    move-result v0

    if-eqz v0, :cond_82

    const/16 v0, 0x8

    .line 500
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getDisableAllPolling()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->i(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 502
    :cond_82
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->cachedSize:I

    return v1
.end method

.method public getTransport()I
    .registers 2

    .line 347
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->transport_:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    .line 364
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->usage_:I

    return v0
.end method

.method public getWakeupSupport()Z
    .registers 2

    .line 312
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->wakeupSupport_:Z

    return v0
.end method

.method public hasApduTimeout()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasApduTimeout:Z

    return v0
.end method

.method public hasAtr()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasAtr:Z

    return v0
.end method

.method public hasDisableAllPolling()Z
    .registers 2

    .line 398
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasDisableAllPolling:Z

    return v0
.end method

.method public hasErrorCode()Z
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasErrorCode:Z

    return v0
.end method

.method public hasEvent()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasEvent:Z

    return v0
.end method

.method public hasTransport()Z
    .registers 2

    .line 346
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasTransport:Z

    return v0
.end method

.method public hasUsage()Z
    .registers 2

    .line 363
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasUsage:Z

    return v0
.end method

.method public hasWakeupSupport()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasWakeupSupport:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasEvent:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/d;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_65

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x18

    if-eq v0, v1, :cond_55

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x28

    if-eq v0, v1, :cond_45

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x38

    if-eq v0, v1, :cond_35

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2d

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 550
    :cond_2d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setDisableAllPolling(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 546
    :cond_35
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setApduTimeout(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 542
    :cond_3d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setUsage(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 538
    :cond_45
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setTransport(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 534
    :cond_4d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setErrorCode(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 530
    :cond_55
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->j()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setWakeupSupport(Z)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 526
    :cond_5d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->l()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setAtr(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    .line 522
    :cond_65
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->setEvent(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    goto :goto_0

    :cond_6d
    return-object p0
.end method

.method public setApduTimeout(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasApduTimeout:Z

    .line 384
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->apduTimeout_:I

    return-object p0
.end method

.method public setAtr(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasAtr:Z

    .line 299
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->atr_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public setDisableAllPolling(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasDisableAllPolling:Z

    .line 401
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->disableAllPolling_:I

    return-object p0
.end method

.method public setErrorCode(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasErrorCode:Z

    .line 333
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->errorCode_:I

    return-object p0
.end method

.method public setEvent(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasEvent:Z

    .line 282
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->event_:I

    return-object p0
.end method

.method public setTransport(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasTransport:Z

    .line 350
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->transport_:I

    return-object p0
.end method

.method public setUsage(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasUsage:Z

    .line 367
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->usage_:I

    return-object p0
.end method

.method public setWakeupSupport(Z)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;
    .registers 3

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasWakeupSupport:Z

    .line 316
    iput-boolean p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->wakeupSupport_:Z

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getEvent()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 434
    :cond_e
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasAtr()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 435
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getAtr()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    .line 437
    :cond_1c
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasWakeupSupport()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    .line 438
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getWakeupSupport()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IZ)V

    .line 440
    :cond_2a
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    .line 441
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 443
    :cond_38
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasTransport()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    .line 444
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getTransport()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 446
    :cond_46
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasUsage()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    .line 447
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getUsage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 449
    :cond_54
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasApduTimeout()Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x7

    .line 450
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getApduTimeout()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)V

    .line 452
    :cond_62
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->hasDisableAllPolling()Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x8

    .line 453
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->getDisableAllPolling()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)V

    :cond_71
    return-void
.end method
