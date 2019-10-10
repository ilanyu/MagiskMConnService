.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemotePowerUpInd"
.end annotation


# static fields
.field public static final TIMEOUT_FIELD_NUMBER:I = 0x1

.field public static final UIM_REMOTE_VOLTAGE_CLASS_B:I = 0x4

.field public static final UIM_REMOTE_VOLTAGE_CLASS_B_HIGH:I = 0x5

.field public static final UIM_REMOTE_VOLTAGE_CLASS_B_LOW:I = 0x3

.field public static final UIM_REMOTE_VOLTAGE_CLASS_C:I = 0x1

.field public static final UIM_REMOTE_VOLTAGE_CLASS_C_HIGH:I = 0x2

.field public static final UIM_REMOTE_VOLTAGE_CLASS_C_LOW:I = 0x0

.field public static final VOLTAGECLASS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasTimeout:Z

.field private hasVoltageclass:Z

.field private timeout_:I

.field private voltageclass_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1006
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 1019
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->timeout_:I

    .line 1036
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->voltageclass_:I

    const/4 v0, -0x1

    .line 1072
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 1126
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 2

    .line 1051
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->clearTimeout()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    .line 1052
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->clearVoltageclass()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    const/4 v0, -0x1

    .line 1053
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->cachedSize:I

    return-object p0
.end method

.method public clearTimeout()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 2

    const/4 v0, 0x0

    .line 1028
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasTimeout:Z

    .line 1029
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->timeout_:I

    return-object p0
.end method

.method public clearVoltageclass()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 2

    const/4 v0, 0x0

    .line 1045
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasVoltageclass:Z

    .line 1046
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->voltageclass_:I

    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .line 1075
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->cachedSize:I

    if-gez v0, :cond_7

    .line 1077
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->getSerializedSize()I

    .line 1079
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 1085
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasTimeout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 1087
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->getTimeout()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1089
    :cond_11
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasVoltageclass()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    .line 1091
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->getVoltageclass()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1093
    :cond_21
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->cachedSize:I

    return v1
.end method

.method public getTimeout()I
    .registers 2

    .line 1020
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->timeout_:I

    return v0
.end method

.method public getVoltageclass()I
    .registers 2

    .line 1038
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->voltageclass_:I

    return v0
.end method

.method public hasTimeout()Z
    .registers 2

    .line 1021
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasTimeout:Z

    return v0
.end method

.method public hasVoltageclass()Z
    .registers 2

    .line 1037
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasVoltageclass:Z

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

    .line 1003
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_25

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 1107
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1117
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->setVoltageclass(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    goto :goto_0

    .line 1113
    :cond_1d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->setTimeout(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    goto :goto_0

    :cond_25
    return-object p0
.end method

.method public setTimeout(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 3

    const/4 v0, 0x1

    .line 1023
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasTimeout:Z

    .line 1024
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->timeout_:I

    return-object p0
.end method

.method public setVoltageclass(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;
    .registers 3

    const/4 v0, 0x1

    .line 1040
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasVoltageclass:Z

    .line 1041
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->voltageclass_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasTimeout()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 1065
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->getTimeout()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 1067
    :cond_e
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->hasVoltageclass()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 1068
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->getVoltageclass()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_1c
    return-void
.end method
