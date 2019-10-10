.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemotePowerDownInd"
.end annotation


# static fields
.field public static final MODE_FIELD_NUMBER:I = 0x1

.field public static final UIM_REMOTE_PDOWN_CARD:I = 0x1

.field public static final UIM_REMOTE_PDOWN_TELECOM_INTERFACE:I


# instance fields
.field private cachedSize:I

.field private hasMode:Z

.field private mode_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1140
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 1149
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mode_:I

    const/4 v0, -0x1

    .line 1181
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 1227
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
    .registers 2

    .line 1164
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->clearMode()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    const/4 v0, -0x1

    .line 1165
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->cachedSize:I

    return-object p0
.end method

.method public clearMode()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
    .registers 2

    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->hasMode:Z

    .line 1159
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mode_:I

    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .line 1184
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->cachedSize:I

    if-gez v0, :cond_7

    .line 1186
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->getSerializedSize()I

    .line 1188
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->cachedSize:I

    return v0
.end method

.method public getMode()I
    .registers 2

    .line 1151
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mode_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 1194
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->hasMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 1196
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->getMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1198
    :cond_11
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->cachedSize:I

    return v1
.end method

.method public hasMode()Z
    .registers 2

    .line 1150
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->hasMode:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

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

    .line 1137
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 1212
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1218
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->setMode(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    goto :goto_0

    :cond_19
    return-object p0
.end method

.method public setMode(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;
    .registers 3

    const/4 v0, 0x1

    .line 1153
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->hasMode:Z

    .line 1154
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->mode_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1176
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->hasMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 1177
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->getMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_e
    return-void
.end method
