.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemoteApduResp"
.end annotation


# static fields
.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final UIM_REMOTE_FAILURE:I = 0x1

.field public static final UIM_REMOTE_SUCCESS:I


# instance fields
.field private cachedSize:I

.field private hasStatus:Z

.field private status_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 806
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 815
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->status_:I

    const/4 v0, -0x1

    .line 848
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 894
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
    .registers 2

    .line 830
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->clearStatus()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    const/4 v0, -0x1

    .line 831
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->cachedSize:I

    return-object p0
.end method

.method public clearStatus()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
    .registers 2

    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->hasStatus:Z

    .line 825
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->status_:I

    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .line 851
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->cachedSize:I

    if-gez v0, :cond_7

    .line 853
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->getSerializedSize()I

    .line 855
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 861
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->hasStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 863
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->getStatus()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 865
    :cond_11
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->cachedSize:I

    return v1
.end method

.method public getStatus()I
    .registers 2

    .line 817
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->status_:I

    return v0
.end method

.method public hasStatus()Z
    .registers 2

    .line 816
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 836
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->hasStatus:Z

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

    .line 803
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 874
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 879
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 885
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->setStatus(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    goto :goto_0

    :cond_19
    return-object p0
.end method

.method public setStatus(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;
    .registers 3

    const/4 v0, 0x1

    .line 819
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->hasStatus:Z

    .line 820
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->status_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 844
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_e
    return-void
.end method
