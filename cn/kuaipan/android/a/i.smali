.class public Lcn/kuaipan/android/a/i;
.super Lcn/kuaipan/android/a/e;
.source "SourceFile"


# static fields
.field private static final bI:J = 0x58731af61b7dd7faL


# instance fields
.field private final bJ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 11
    invoke-static {p1}, Lcn/kuaipan/android/a/i;->a(I)I

    move-result v0

    const v1, 0x7acd8

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p2}, Lcn/kuaipan/android/a/e;-><init>(ILjava/lang/String;)V

    .line 12
    iput p1, p0, Lcn/kuaipan/android/a/i;->bJ:I

    return-void
.end method

.method private static a(I)I
    .registers 2

    const/16 v0, 0x64

    if-lt p0, v0, :cond_9

    const/16 v0, 0x257

    if-gt p0, v0, :cond_9

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(ErrCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/kuaipan/android/a/i;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): StatusCode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/kuaipan/android/a/i;->bJ:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcn/kuaipan/android/a/i;->bH:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcn/kuaipan/android/a/i;->bH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_4e

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuaipan/android/a/i;->bH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4e
    return-object v0
.end method

.method public c()I
    .registers 2

    .line 16
    iget v0, p0, Lcn/kuaipan/android/a/i;->bJ:I

    return v0
.end method
