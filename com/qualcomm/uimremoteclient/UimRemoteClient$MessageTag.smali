.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
.super Lcom/google/protobuf/micro/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageTag"
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private error_:I

.field private hasError:Z

.field private hasId:Z

.field private hasPayload:Z

.field private hasToken:Z

.field private hasType:Z

.field private id_:I

.field private payload_:Lcom/google/protobuf/micro/a;

.field private token_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/micro/d;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->type_:I

    .line 54
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->id_:I

    .line 71
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->error_:I

    .line 88
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->token_:I

    .line 105
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->payload_:Lcom/google/protobuf/micro/a;

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    invoke-direct {v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->mergeFrom([B)Lcom/google/protobuf/micro/d;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->clearType()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 121
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->clearId()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 122
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->clearError()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 123
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->clearToken()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    .line 124
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->clearPayload()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->cachedSize:I

    return-object p0
.end method

.method public clearError()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasError:Z

    .line 81
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->error_:I

    return-object p0
.end method

.method public clearId()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasId:Z

    .line 64
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->id_:I

    return-object p0
.end method

.method public clearPayload()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasPayload:Z

    .line 115
    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->payload_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public clearToken()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasToken:Z

    .line 98
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->token_:I

    return-object p0
.end method

.method public clearType()Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 2

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasType:Z

    .line 47
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->type_:I

    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->cachedSize:I

    if-gez v0, :cond_7

    .line 160
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getSerializedSize()I

    .line 162
    :cond_7
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->cachedSize:I

    return v0
.end method

.method public getError()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->error_:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->id_:I

    return v0
.end method

.method public getPayload()Lcom/google/protobuf/micro/a;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->payload_:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .line 168
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 172
    :cond_11
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    .line 174
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 176
    :cond_21
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasError()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    .line 178
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getError()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 180
    :cond_31
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    .line 182
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getToken()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 184
    :cond_41
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x5

    .line 186
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getPayload()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v0

    add-int/2addr v1, v0

    .line 188
    :cond_51
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->cachedSize:I

    return v1
.end method

.method public getToken()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->token_:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->type_:I

    return v0
.end method

.method public hasError()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasError:Z

    return v0
.end method

.method public hasId()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasId:Z

    return v0
.end method

.method public hasPayload()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasPayload:Z

    return v0
.end method

.method public hasToken()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasToken:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 130
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasType:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 131
    :cond_6
    iget-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasId:Z

    if-nez v0, :cond_b

    return v1

    :cond_b
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

    .line 29
    invoke-virtual {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_49

    const/16 v1, 0x8

    if-eq v0, v1, :cond_41

    const/16 v1, 0x10

    if-eq v0, v1, :cond_39

    const/16 v1, 0x18

    if-eq v0, v1, :cond_31

    const/16 v1, 0x25

    if-eq v0, v1, :cond_29

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_21

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->parseUnknownField(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 224
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->l()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setPayload(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    goto :goto_0

    .line 220
    :cond_29
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setToken(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    goto :goto_0

    .line 216
    :cond_31
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setError(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    goto :goto_0

    .line 212
    :cond_39
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setId(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    goto :goto_0

    .line 208
    :cond_41
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->setType(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    goto :goto_0

    :cond_49
    return-object p0
.end method

.method public setError(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 3

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasError:Z

    .line 76
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->error_:I

    return-object p0
.end method

.method public setId(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 3

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasId:Z

    .line 59
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->id_:I

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/micro/a;)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 3

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasPayload:Z

    .line 110
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->payload_:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public setToken(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 3

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasToken:Z

    .line 93
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->token_:I

    return-object p0
.end method

.method public setType(I)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 3

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasType:Z

    .line 42
    iput p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->type_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasType()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 141
    :cond_e
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    .line 142
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 144
    :cond_1c
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasError()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    .line 145
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getError()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    .line 147
    :cond_2a
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    .line 148
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getToken()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(II)V

    .line 150
    :cond_38
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    .line 151
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->getPayload()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    :cond_46
    return-void
.end method
