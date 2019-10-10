.class public abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:I = 0x5


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 29
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_28

    .line 40
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e:Ljava/lang/String;

    return-void

    .line 36
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "The ext\'s %s length should not exceeds %d"

    .line 36
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "The type %s is not supported"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The upload file parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e:Ljava/lang/String;

    return-void
.end method

.method abstract a(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d:Ljava/lang/String;

    return-void
.end method

.method b(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a()I

    move-result p1

    if-lt v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method g()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    return v0
.end method

.method h()Z
    .registers 2

    .line 79
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method i()V
    .registers 2

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/j;->f:I

    return-void
.end method

.method j()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method k()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
