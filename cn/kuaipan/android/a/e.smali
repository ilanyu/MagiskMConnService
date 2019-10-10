.class public Lcn/kuaipan/android/a/e;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/a/d;


# static fields
.field private static final bI:J = 0x678bb89717b88b4eL


# instance fields
.field protected final bH:Ljava/lang/String;

.field private final bJ:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_12

    const-string v1, ""

    goto :goto_23

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iput p1, p0, Lcn/kuaipan/android/a/e;->bJ:I

    .line 37
    iput-object p2, p0, Lcn/kuaipan/android/a/e;->bH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 31
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0, p2}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lcn/kuaipan/android/a/b;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lcn/kuaipan/android/a/e;

    if-eqz v0, :cond_b

    .line 59
    check-cast p0, Lcn/kuaipan/android/a/e;

    return-object p0

    .line 69
    :cond_b
    invoke-static {p0}, Lcn/kuaipan/android/a/b;->e(Ljava/lang/Throwable;)V

    .line 70
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1b

    .line 71
    new-instance v0, Lcn/kuaipan/android/a/h;

    const v1, 0x7b12f

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 72
    :cond_1b
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_28

    .line 73
    new-instance v0, Lcn/kuaipan/android/a/h;

    const v1, 0x7b0c0

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 74
    :cond_28
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_35

    .line 75
    new-instance v0, Lcn/kuaipan/android/a/h;

    const v1, 0x7b250

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 76
    :cond_35
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_42

    .line 77
    new-instance v0, Lcn/kuaipan/android/a/h;

    const v1, 0x7b12e

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 78
    :cond_42
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_4f

    .line 79
    new-instance v0, Lcn/kuaipan/android/a/h;

    const v1, 0x7b2b4

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 80
    :cond_4f
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_5c

    .line 81
    new-instance v0, Lcn/kuaipan/android/a/h;

    const v1, 0x7b2b5

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 82
    :cond_5c
    instance-of v0, p0, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_69

    .line 83
    new-instance v0, Lcn/kuaipan/android/a/e;

    const v1, 0x7a129

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 84
    :cond_69
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_76

    .line 85
    new-instance v0, Lcn/kuaipan/android/a/e;

    const v1, 0x62639

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 86
    :cond_76
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_83

    .line 87
    new-instance v0, Lcn/kuaipan/android/a/e;

    const v1, 0x62638

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 88
    :cond_83
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_90

    .line 91
    new-instance v0, Lcn/kuaipan/android/a/e;

    const v1, 0x62a1f

    invoke-direct {v0, v1, p1, p0}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 89
    :cond_90
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    if-nez p0, :cond_3

    return-object p0

    .line 101
    :cond_3
    instance-of v0, p0, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v0, :cond_f

    .line 102
    new-instance v0, Lcn/kuaipan/android/a/c;

    check-cast p0, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v0, p0}, Lcn/kuaipan/android/a/c;-><init>(Lorg/apache/http/conn/HttpHostConnectException;)V

    move-object p0, v0

    :cond_f
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(ErrCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/kuaipan/android/a/e;->bJ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcn/kuaipan/android/a/e;->bH:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcn/kuaipan/android/a/e;->bH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_47

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuaipan/android/a/e;->bH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_47
    return-object v0
.end method

.method public b()I
    .registers 2

    .line 41
    iget v0, p0, Lcn/kuaipan/android/a/e;->bJ:I

    return v0
.end method
