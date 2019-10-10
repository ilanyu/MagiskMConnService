.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemoteEventResp"
.end annotation


# static fields
.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final UIM_REMOTE_FAILURE:I = 0x1

.field public static final UIM_REMOTE_SUCCESS:I


# instance fields
.field private cachedSize:I

.field private hasResponse:Z

.field private response_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 573
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 582
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->response_:I

    const/4 v0, -0x1

    .line 615
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 661
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
    .registers 2

    .line 597
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->clearResponse()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    const/4 v0, -0x1

    .line 598
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->cachedSize:I

    return-object p0
.end method

.method public clearResponse()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
    .registers 2

    const/4 v0, 0x0

    .line 591
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->hasResponse:Z

    .line 592
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->response_:I

    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .line 618
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->cachedSize:I

    if-gez v0, :cond_7

    .line 620
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->getSerializedSize()I

    .line 622
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .registers 2

    .line 584
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 628
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->hasResponse()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 630
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->getResponse()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 632
    :cond_11
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->cachedSize:I

    return v1
.end method

.method public hasResponse()Z
    .registers 2

    .line 583
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 603
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->hasResponse:Z

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

    .line 570
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 646
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 652
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->setResponse(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    goto :goto_0

    :cond_19
    return-object p0
.end method

.method public setResponse(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;
    .registers 3

    const/4 v0, 0x1

    .line 586
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->hasResponse:Z

    .line 587
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->response_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 611
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->getResponse()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_e
    return-void
.end method
