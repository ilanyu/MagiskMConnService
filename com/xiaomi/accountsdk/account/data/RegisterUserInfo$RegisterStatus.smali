.class public final enum Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegisterStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field private static final synthetic e:[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 12
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const-string v1, "STATUS_NOT_REGISTERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 13
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const-string v1, "STATUS_USED_POSSIBLY_RECYCLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->b:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    .line 14
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const-string v1, "STATUS_REGISTERED_NOT_RECYCLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->c:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->b:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->c:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->e:[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->d:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    .registers 6

    .line 22
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->values()[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 24
    iget v4, v3, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->d:I

    if-ne p0, v4, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const-string v0, "RegisterStatus"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has not this status value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/accountsdk/utils/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    .registers 2

    .line 11
    const-class v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    .registers 1

    .line 11
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->e:[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    return-object v0
.end method
