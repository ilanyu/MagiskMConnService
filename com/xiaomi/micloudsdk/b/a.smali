.class public final Lcom/xiaomi/micloudsdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = ","


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/b/a;
    .registers 5

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, ","

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 32
    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_2f

    .line 35
    :cond_25
    new-instance v1, Lcom/xiaomi/micloudsdk/b/a;

    aget-object v0, p0, v0

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Lcom/xiaomi/micloudsdk/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/b/a;
    .registers 3

    .line 24
    new-instance v0, Lcom/xiaomi/micloudsdk/b/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3d

    .line 51
    :cond_12
    check-cast p1, Lcom/xiaomi/micloudsdk/b/a;

    .line 53
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_27

    :cond_23
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_28

    :goto_27
    return v1

    .line 57
    :cond_28
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3b

    :cond_37
    iget-object p1, p1, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    if-eqz p1, :cond_3c

    :goto_3b
    return v1

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_19
    add-int/2addr v0, v1

    return v0
.end method
