.class public Lcom/xiaomi/micloudsdk/sync/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x2


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/f;->b:Ljava/lang/String;

    const/4 v0, -0x2

    .line 24
    :try_start_6
    invoke-static {p1, p2}, Lmiui/cloud/sync/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/f;->c:I
    :try_end_c
    .catch Lmiui/cloud/sync/b; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_f

    .line 26
    :catch_d
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->c:I

    .line 29
    :goto_f
    :try_start_f
    invoke-static {p1, p2}, Lmiui/cloud/sync/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/f;->d:I
    :try_end_15
    .catch Lmiui/cloud/sync/b; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_18

    .line 31
    :catch_16
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->d:I

    .line 34
    :goto_18
    :try_start_18
    invoke-static {p1, p2}, Lmiui/cloud/sync/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/micloudsdk/sync/f;->e:I
    :try_end_1e
    .catch Lmiui/cloud/sync/b; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_21

    .line 36
    :catch_1f
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->e:I

    .line 39
    :goto_21
    :try_start_21
    invoke-static {p1, p2}, Lmiui/cloud/sync/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/micloudsdk/sync/f;->f:I
    :try_end_27
    .catch Lmiui/cloud/sync/b; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_2a

    .line 41
    :catch_28
    iput v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->f:I

    :goto_2a
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/f;
    .registers 3

    .line 18
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/sync/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "synced count:"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/f;->a()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method private b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "unsynced count:"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/f;->b()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method private c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "unsynced wifi only count:"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/f;->d()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method

.method private d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    const-string v0, "unsynced secret count:"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/f;->c()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_10

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_10
    const-string v0, "null"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-object p1
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->c:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/xiaomi/micloudsdk/sync/f;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncDataInfo["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]  {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/f;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/f;->b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/f;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p0, v0}, Lcom/xiaomi/micloudsdk/sync/f;->c(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
