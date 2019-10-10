.class public Lcn/kuaipan/android/a/c;
.super Ljava/net/ConnectException;
.source "SourceFile"


# static fields
.field private static final a:J = 0x519f4c57914066d8L


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/HttpHostConnectException;)V
    .registers 3

    .line 12
    invoke-virtual {p1}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lorg/apache/http/conn/HttpHostConnectException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 15
    invoke-virtual {p0, p1}, Lcn/kuaipan/android/a/c;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_10
    return-void
.end method
