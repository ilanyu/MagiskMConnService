.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UimRemoteApduInd"
.end annotation


# static fields
.field public static final APDUCOMMAND_FIELD_NUMBER:I = 0x1


# instance fields
.field private apduCommand_:Lcom/google/protobuf/micro/a;

.field private cachedSize:I

.field private hasApduCommand:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 908
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    .line 913
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->apduCommand_:Lcom/google/protobuf/micro/a;

    const/4 v0, -0x1

    .line 946
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 992
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
    .registers 2

    .line 928
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->clearApduCommand()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    const/4 v0, -0x1

    .line 929
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->cachedSize:I

    return-object p0
.end method

.method public clearApduCommand()Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
    .registers 2

    const/4 v0, 0x0

    .line 922
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->hasApduCommand:Z

    .line 923
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->apduCommand_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public getApduCommand()Lcom/google/protobuf/micro/a;
    .registers 2

    .line 914
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->apduCommand_:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .line 949
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->cachedSize:I

    if-gez v0, :cond_7

    .line 951
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->getSerializedSize()I

    .line 953
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 959
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->hasApduCommand()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 961
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->getApduCommand()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v0

    add-int/2addr v1, v0

    .line 963
    :cond_11
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->cachedSize:I

    return v1
.end method

.method public hasApduCommand()Z
    .registers 2

    .line 915
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->hasApduCommand:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .line 934
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->hasApduCommand:Z

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

    .line 905
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    .line 977
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 983
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->l()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->setApduCommand(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    goto :goto_0

    :cond_19
    return-object p0
.end method

.method public setApduCommand(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;
    .registers 3

    const/4 v0, 0x1

    .line 917
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->hasApduCommand:Z

    .line 918
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->apduCommand_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->hasApduCommand()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 942
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->getApduCommand()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    :cond_e
    return-void
.end method
