.class public Lcn/kuaipan/android/http/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/http/NameValuePair;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/kuaipan/android/http/a/b;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcn/kuaipan/android/http/a/b;->c:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/kuaipan/android/http/a/b;->c:[B

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 76
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

    .line 57
    :cond_8
    instance-of v2, p1, Lcn/kuaipan/android/http/a/b;

    if-eqz v2, :cond_2e

    .line 58
    check-cast p1, Lcn/kuaipan/android/http/a/b;

    .line 59
    iget-object v2, p0, Lcn/kuaipan/android/http/a/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuaipan/android/http/a/b;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    .line 60
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcn/kuaipan/android/http/a/b;->c:[B

    iget-object p1, p1, Lcn/kuaipan/android/http/a/b;->c:[B

    .line 61
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0

    :cond_2e
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcn/kuaipan/android/http/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 69
    iget-object v0, p0, Lcn/kuaipan/android/http/a/b;->a:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->c:[B

    if-eqz v1, :cond_2c

    const-string v1, "=File[name="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcn/kuaipan/android/http/a/b;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
