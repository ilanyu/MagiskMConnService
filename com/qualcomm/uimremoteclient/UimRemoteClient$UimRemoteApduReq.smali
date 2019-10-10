.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemoteApduReq"
.end annotation


# static fields
.field public static final APDURESPONSE_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final UIM_REMOTE_FAILURE:I = 0x1

.field public static final UIM_REMOTE_SUCCESS:I


# instance fields
.field private apduResponse_:Lcom/google/protobuf/micro/a;

.field private cachedSize:I

.field private hasApduResponse:Z

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 675
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 684
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->status_:I

    .line 701
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->apduResponse_:Lcom/google/protobuf/micro/a;

    const/4 v0, -0x1

    .line 738
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 798
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 792
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 2

    .line 716
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->clearStatus()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    .line 717
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->clearApduResponse()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    const/4 v0, -0x1

    .line 718
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->cachedSize:I

    return-object p0
.end method

.method public clearApduResponse()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 2

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasApduResponse:Z

    .line 711
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->apduResponse_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public clearStatus()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 2

    const/4 v0, 0x0

    .line 693
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasStatus:Z

    .line 694
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->status_:I

    return-object p0
.end method

.method public getApduResponse()Lcom/google/protobuf/micro/a;
    .registers 2

    .line 702
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->apduResponse_:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .line 741
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->cachedSize:I

    if-gez v0, :cond_7

    .line 743
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->getSerializedSize()I

    .line 745
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 751
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 753
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->getStatus()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 755
    :cond_11
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasApduResponse()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    .line 757
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->getApduResponse()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v0

    add-int/2addr v1, v0

    .line 759
    :cond_21
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->cachedSize:I

    return v1
.end method

.method public getStatus()I
    .registers 2

    .line 686
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->status_:I

    return v0
.end method

.method public hasApduResponse()Z
    .registers 2

    .line 703
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasApduResponse:Z

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .line 685
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 723
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasStatus:Z

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

    .line 672
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_25

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    .line 773
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 783
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->l()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->setApduResponse(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    goto :goto_0

    .line 779
    :cond_1d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->setStatus(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    goto :goto_0

    :cond_25
    return-object p0
.end method

.method public setApduResponse(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 3

    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasApduResponse:Z

    .line 706
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->apduResponse_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public setStatus(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;
    .registers 3

    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasStatus:Z

    .line 689
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->status_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 731
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 733
    :cond_e
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->hasApduResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 734
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->getApduResponse()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    :cond_1c
    return-void
.end method
