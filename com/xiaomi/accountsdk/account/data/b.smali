.class public final enum Lcom/xiaomi/accountsdk/account/data/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/b;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/b;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/b;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/b;

.field public static final enum d:Lcom/xiaomi/accountsdk/account/data/b;

.field public static final enum e:Lcom/xiaomi/accountsdk/account/data/b;

.field private static final synthetic f:[Lcom/xiaomi/accountsdk/account/data/b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 5
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/b;

    const-string v1, "ADD_SAFE_EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/b;->a:Lcom/xiaomi/accountsdk/account/data/b;

    .line 6
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/b;

    const-string v1, "REPLACE_SAFE_EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/b;->b:Lcom/xiaomi/accountsdk/account/data/b;

    .line 7
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/b;

    const-string v1, "ADD_PHONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/account/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/b;->c:Lcom/xiaomi/accountsdk/account/data/b;

    .line 8
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/b;

    const-string v1, "REPLACE_PHONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/accountsdk/account/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/b;->d:Lcom/xiaomi/accountsdk/account/data/b;

    .line 9
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/b;

    const-string v1, "DELETE_PHONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/account/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/b;->e:Lcom/xiaomi/accountsdk/account/data/b;

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/b;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/b;->a:Lcom/xiaomi/accountsdk/account/data/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/b;->b:Lcom/xiaomi/accountsdk/account/data/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/b;->c:Lcom/xiaomi/accountsdk/account/data/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/b;->d:Lcom/xiaomi/accountsdk/account/data/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/b;->e:Lcom/xiaomi/accountsdk/account/data/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/b;->f:[Lcom/xiaomi/accountsdk/account/data/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/b;
    .registers 2

    .line 3
    const-class v0, Lcom/xiaomi/accountsdk/account/data/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/b;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/b;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/b;->f:[Lcom/xiaomi/accountsdk/account/data/b;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 12
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/b;->a:Lcom/xiaomi/accountsdk/account/data/b;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/b;->b:Lcom/xiaomi/accountsdk/account/data/b;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public b()Z
    .registers 2

    .line 16
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/b;->c:Lcom/xiaomi/accountsdk/account/data/b;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/b;->d:Lcom/xiaomi/accountsdk/account/data/b;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/b;->e:Lcom/xiaomi/accountsdk/account/data/b;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
