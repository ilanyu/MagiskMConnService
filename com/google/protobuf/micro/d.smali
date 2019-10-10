.class public abstract Lcom/google/protobuf/micro/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCachedSize()I
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom([B)Lcom/google/protobuf/micro/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/micro/d;->mergeFrom([BII)Lcom/google/protobuf/micro/d;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/micro/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/c;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/b;->a([BII)Lcom/google/protobuf/micro/b;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/d;->mergeFrom(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/d;

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p2}, Lcom/google/protobuf/micro/b;->a(I)V
    :try_end_b
    .catch Lcom/google/protobuf/micro/c; {:try_start_0 .. :try_end_b} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 122
    :catch_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_14
    move-exception p1

    .line 120
    throw p1
.end method

.method protected parseUnknownField(Lcom/google/protobuf/micro/b;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1, p2}, Lcom/google/protobuf/micro/b;->b(I)Z

    move-result p1

    return p1
.end method

.method public toByteArray([BII)V
    .registers 4

    .line 91
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/d;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    .line 95
    :catch_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toByteArray()[B
    .registers 4

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/micro/d;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 76
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/protobuf/micro/d;->toByteArray([BII)V

    return-object v0
.end method

.method public abstract writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
