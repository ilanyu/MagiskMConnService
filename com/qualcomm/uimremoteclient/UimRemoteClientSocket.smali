.class public Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final BUFFER_SIZE:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final SOCKET_FAILED_RETRY_TIME:I

.field private final SOCKET_FAILED_SLEEP_TIME:I

.field private SocketAddress:Ljava/lang/String;

.field private instanceId:I

.field private mBuffer:[B

.field private mBufferLength:I

.field private mIS:Ljava/io/InputStream;

.field private mOS:Ljava/io/OutputStream;

.field private mRecvHdlr:Landroid/os/Handler;

.field private mSocket:Landroid/net/LocalSocket;

.field private mToDestroy:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 5

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "VSC-UimSocket"

    .line 24
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->LOG_TAG:Ljava/lang/String;

    const-string v0, "qmux_radio/uim_remote_client_socket"

    .line 26
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->SocketAddress:Ljava/lang/String;

    const/16 v0, 0x14

    .line 27
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->SOCKET_FAILED_RETRY_TIME:I

    const/16 v0, 0xfa0

    .line 28
    iput v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->SOCKET_FAILED_SLEEP_TIME:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    .line 30
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mIS:Ljava/io/InputStream;

    .line 31
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mOS:Ljava/io/OutputStream;

    const/16 v1, 0x400

    .line 33
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->BUFFER_SIZE:I

    .line 34
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBufferLength:I

    .line 37
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mRecvHdlr:Landroid/os/Handler;

    .line 38
    iput v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->instanceId:I

    .line 40
    iput-boolean v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mToDestroy:Z

    const-string v0, "VSC-UimSocket"

    const-string v1, "UimRemoteClientSocket()"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mRecvHdlr:Landroid/os/Handler;

    .line 45
    iput p2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->instanceId:I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->SocketAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->SocketAddress:Ljava/lang/String;

    return-void
.end method

.method private connectSocket()Z
    .registers 7

    const-string v0, "VSC-UimSocket"

    const-string v1, "connectSocket()"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->resetSocket()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    const/16 v2, 0x14

    if-ge v1, v2, :cond_8f

    .line 63
    :try_start_10
    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->SocketAddress:Ljava/lang/String;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 64
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    const-string v3, "VSC-UimSocket"

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const-string v3, "VSC-UimSocket"

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mOS:Ljava/io/OutputStream;

    .line 69
    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mIS:Ljava/io/InputStream;
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6e} :catch_70

    const/4 v0, 0x1

    return v0

    :catch_70
    move-exception v2

    const-string v3, "VSC-UimSocket"

    const-string v4, "Socket connection failed"

    .line 72
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 73
    iput-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    .line 74
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v2, 0xfa0

    .line 76
    :try_start_80
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_8b

    :catch_84
    const-string v2, "VSC-UimSocket"

    const-string v3, "thread sleep failed"

    .line 78
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_8f
    return v0
.end method

.method private handleRecvBytes()V
    .registers 6

    const-string v0, "VSC-UimSocket"

    const-string v1, "handleRecvBytes()"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mRecvHdlr:Landroid/os/Handler;

    if-nez v0, :cond_c

    return-void

    .line 223
    :cond_c
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    iget v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBufferLength:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mRecvHdlr:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->instanceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private resetSocket()V
    .registers 4

    const-string v0, "VSC-UimSocket"

    const-string v1, "resetSocket()"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2e

    .line 90
    :try_start_b
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 91
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 92
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    const-string v1, "VSC-UimSocket"

    const-string v2, "resetSocket() - failed!"

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_26
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    .line 98
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mIS:Ljava/io/InputStream;

    .line 99
    iput-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mOS:Ljava/io/OutputStream;

    goto :goto_35

    :cond_2e
    const-string v0, "VSC-UimSocket"

    const-string v1, "resetSocket() - socket is not initialized"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method private send([B)V
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_c

    const-string p1, "VSC-UimSocket"

    const-string v0, "send() - mSocket is null!"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_c
    :try_start_c
    array-length v0, p1

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    aput-byte v3, v0, v2

    aput-byte v3, v0, v3

    const/4 v2, 0x2

    .line 123
    array-length v4, p1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x3

    .line 124
    array-length v4, p1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 126
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object p1, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mOS:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_30} :catch_31

    goto :goto_48

    :catch_31
    move-exception p1

    const-string v0, "VSC-UimSocket"

    const-string v1, "send() - write failed due to null point exception !!!"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_48

    :catch_3d
    move-exception p1

    const-string v0, "VSC-UimSocket"

    const-string v1, "send() - write failed !!!"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 107
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const-string v0, "VSC-UimSocket"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Message length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->send([B)V

    return-void
.end method

.method public run()V
    .registers 7

    const-string v0, "VSC-UimSocket"

    const-string v1, "run()"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_9
    const/4 v2, 0x1

    .line 141
    :goto_a
    iget-boolean v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mToDestroy:Z

    if-nez v3, :cond_c5

    if-eqz v2, :cond_1e

    .line 142
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->connectSocket()Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v0, "VSC-UimSocket"

    const-string v1, "run() - connect socket failed."

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v2, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 155
    :cond_21
    :try_start_21
    iget-object v4, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mIS:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    invoke-virtual {v4, v5, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_33

    const-string v2, "VSC-UimSocket"

    const-string v3, "run() - bytesRead < 0 when reading message length"

    .line 157
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_32} :catch_ba
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_32} :catch_ae

    goto :goto_37

    :cond_33
    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    if-gtz v3, :cond_21

    :goto_37
    if-gez v4, :cond_3a

    :goto_39
    goto :goto_9

    .line 179
    :cond_3a
    iget-object v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const-string v3, "VSC-UimSocket"

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run() - Message size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput v2, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBufferLength:I

    move v3, v2

    const/4 v2, 0x0

    .line 188
    :cond_77
    :try_start_77
    iget-object v4, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mIS:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mBuffer:[B

    invoke-virtual {v4, v5, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_89

    const-string v2, "VSC-UimSocket"

    const-string v3, "run() - bytesRead < 0 when reading message"

    .line 190
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_88} :catch_a2
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_88} :catch_96

    goto :goto_8d

    :cond_89
    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    if-gtz v3, :cond_77

    :goto_8d
    if-gez v4, :cond_90

    goto :goto_39

    .line 211
    :cond_90
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->handleRecvBytes()V

    const/4 v2, 0x0

    goto/16 :goto_a

    :catch_96
    move-exception v0

    const-string v1, "VSC-UimSocket"

    const-string v2, "NullPointerException in reading socket"

    .line 201
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c5

    :catch_a2
    move-exception v0

    const-string v1, "VSC-UimSocket"

    const-string v2, "Exception in reading socket"

    .line 197
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c5

    :catch_ae
    move-exception v0

    const-string v1, "VSC-UimSocket"

    const-string v2, "NullPointerException in reading socket"

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c5

    :catch_ba
    move-exception v0

    const-string v1, "VSC-UimSocket"

    const-string v2, "Exception in reading socket"

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public toDestroy()V
    .registers 3

    const-string v0, "VSC-UimSocket"

    const-string v1, "toDestroy()"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->mToDestroy:Z

    .line 52
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientSocket;->resetSocket()V

    return-void
.end method
