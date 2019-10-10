.class public Lcom/xiaomi/accountsdk/utils/AESStringDef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "%s:%s:%s"

.field private static final b:Ljava/lang/String; = ":"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/AESStringDef;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;
        }
    .end annotation

    const-string v0, ":"

    .line 30
    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 31
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 37
    new-instance p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/AESStringDef;-><init>()V

    const/4 v1, 0x0

    .line 38
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 39
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->d:Ljava/lang/String;

    const/4 v1, 0x2

    .line 40
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->e:Ljava/lang/String;

    return-object p0

    .line 32
    :cond_21
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encrypt string format,the correct format is version:iv:content but original string is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/AESStringDef;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 49
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AESStringDef;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/AESStringDef;-><init>()V

    .line 50
    iput-object p0, v0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->c:Ljava/lang/String;

    .line 51
    iput-object p1, v0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->d:Ljava/lang/String;

    .line 52
    iput-object p2, v0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->e:Ljava/lang/String;

    return-object v0

    .line 46
    :cond_1e
    new-instance p0, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;

    const-string p1, "invalid AES data"

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/utils/AESStringDef$InvalidAESDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "%s:%s:%s"

    const/4 v1, 0x3

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->d:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/AESStringDef;->e:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
