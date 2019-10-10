.class public final enum Lcom/xiaomi/accountsdk/guestaccount/data/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/guestaccount/data/e;

.field public static final enum b:Lcom/xiaomi/accountsdk/guestaccount/data/e;

.field public static final d:I = -0x1

.field private static final synthetic e:[Lcom/xiaomi/accountsdk/guestaccount/data/e;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    .line 5
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;

    const-string v1, "FID"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;->b:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/xiaomi/accountsdk/guestaccount/data/e;

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->b:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;->e:[Lcom/xiaomi/accountsdk/guestaccount/data/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/xiaomi/accountsdk/guestaccount/data/e;->c:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/accountsdk/guestaccount/data/e;
    .registers 6

    .line 15
    invoke-static {}, Lcom/xiaomi/accountsdk/guestaccount/data/e;->values()[Lcom/xiaomi/accountsdk/guestaccount/data/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 16
    iget v4, v3, Lcom/xiaomi/accountsdk/guestaccount/data/e;->c:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/e;
    .registers 2

    .line 3
    const-class v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/guestaccount/data/e;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/guestaccount/data/e;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;->e:[Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/guestaccount/data/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/guestaccount/data/e;

    return-object v0
.end method
