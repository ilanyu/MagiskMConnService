.class public Lcn/kuaipan/android/http/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/NameValuePair;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    .line 31
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 61
    :cond_8
    instance-of v2, p1, Lcn/kuaipan/android/http/a/f;

    if-eqz v2, :cond_24

    .line 62
    check-cast p1, Lcn/kuaipan/android/http/a/f;

    .line 63
    iget-object v2, p0, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    iget-object p1, p1, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    invoke-static {v2, p1}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    :cond_24
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 71
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    if-eqz v1, :cond_17

    .line 44
    iget-object v1, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 45
    :cond_17
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 47
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    if-eqz v0, :cond_38

    const-string v0, "=File[path="

    .line 49
    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcn/kuaipan/android/http/a/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "]"

    .line 51
    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 53
    :cond_38
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
