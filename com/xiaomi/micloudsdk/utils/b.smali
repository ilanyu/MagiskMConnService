.class public Lcom/xiaomi/micloudsdk/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/f;


# static fields
.field private static final b:Ljava/lang/String; = "AESWithIVCoder"

.field private static final c:Ljava/lang/String; = "1"

.field private static final d:I = 0xb


# instance fields
.field protected a:Ljava/lang/String;

.field private e:[B

.field private final f:I

.field private g:J

.field private h:Lcom/xiaomi/micloudsdk/utils/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 17
    iput v0, p0, Lcom/xiaomi/micloudsdk/utils/b;->f:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/b;->g:J

    .line 24
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/b;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/utils/AESWithIVCoder$1;-><init>(Lcom/xiaomi/micloudsdk/utils/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/b;->h:Lcom/xiaomi/micloudsdk/utils/a;

    .line 33
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/utils/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/micloudsdk/utils/b;)[B
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/utils/b;->e:[B

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/utils/b;->g:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/b;->a()V

    .line 45
    :try_start_3
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->a(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 50
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->b()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xb

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/b;->e:[B

    .line 51
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/utils/b;->h:Lcom/xiaomi/micloudsdk/utils/a;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/micloudsdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2a
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aes encrypt format version is wrong"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_3 .. :try_end_41} :catch_41

    :catch_41
    move-exception p1

    .line 53
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected a()V
    .registers 5

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/micloudsdk/utils/b;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    return-void

    .line 73
    :cond_f
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "this method can not call concurrently"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/micloudsdk/c/a;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/utils/b;->a()V

    const/16 v0, 0x10

    .line 61
    :try_start_5
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/utils/b;->e:[B

    .line 62
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/b;->e:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 63
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/b;->h:Lcom/xiaomi/micloudsdk/utils/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 64
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/utils/b;->e:[B

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/AESStringDef;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/utils/AESStringDef;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catch Lcom/xiaomi/micloudsdk/utils/AESStringDef$InvalidAESDataException; {:try_start_5 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    .line 67
    new-instance v0, Lcom/xiaomi/micloudsdk/c/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/micloudsdk/c/a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
