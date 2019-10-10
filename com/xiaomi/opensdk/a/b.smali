.class public Lcom/xiaomi/opensdk/a/b;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final a:I = 0x493e0

.field private static final b:J = 0x1L


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:I

.field private final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/xiaomi/opensdk/a/b;->d:I

    .line 23
    iput v0, p0, Lcom/xiaomi/opensdk/a/b;->e:I

    .line 36
    iput-object p1, p0, Lcom/xiaomi/opensdk/a/b;->c:Ljava/lang/String;

    .line 37
    iput-wide p2, p0, Lcom/xiaomi/opensdk/a/b;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/xiaomi/opensdk/a/b;->d:I

    .line 23
    iput v0, p0, Lcom/xiaomi/opensdk/a/b;->e:I

    .line 41
    iput-object p1, p0, Lcom/xiaomi/opensdk/a/b;->c:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/xiaomi/opensdk/a/b;->f:J

    .line 43
    iput p4, p0, Lcom/xiaomi/opensdk/a/b;->e:I

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 2

    .line 67
    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1b

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1b

    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/xiaomi/opensdk/a/b;->f:J

    return-wide v0
.end method

.method public b()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/xiaomi/opensdk/a/b;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/xiaomi/opensdk/a/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/opensdk/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", retry after "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/opensdk/a/b;->f:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    return-object v0
.end method
