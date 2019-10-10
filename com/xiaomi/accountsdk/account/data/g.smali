.class public final enum Lcom/xiaomi/accountsdk/account/data/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/account/data/g;

.field public static final enum b:Lcom/xiaomi/accountsdk/account/data/g;

.field public static final enum c:Lcom/xiaomi/accountsdk/account/data/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum d:Lcom/xiaomi/accountsdk/account/data/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum e:Lcom/xiaomi/accountsdk/account/data/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum f:Lcom/xiaomi/accountsdk/account/data/g;

.field public static final enum g:Lcom/xiaomi/accountsdk/account/data/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum h:Lcom/xiaomi/accountsdk/account/data/g;

.field public static final enum i:Lcom/xiaomi/accountsdk/account/data/g;

.field private static final synthetic j:[Lcom/xiaomi/accountsdk/account/data/g;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "ADD_SAFE_EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->a:Lcom/xiaomi/accountsdk/account/data/g;

    .line 5
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "REPLACE_SAFE_EMAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->b:Lcom/xiaomi/accountsdk/account/data/g;

    .line 6
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "ADD_PHONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->c:Lcom/xiaomi/accountsdk/account/data/g;

    .line 8
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "REPLACE_PHONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->d:Lcom/xiaomi/accountsdk/account/data/g;

    .line 10
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "DELETE_PHONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->e:Lcom/xiaomi/accountsdk/account/data/g;

    .line 12
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "SEND_EMAIL_ACTIVATE_MESSAGE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->f:Lcom/xiaomi/accountsdk/account/data/g;

    .line 13
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "SET_SECURITY_QUESTIONS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->g:Lcom/xiaomi/accountsdk/account/data/g;

    .line 15
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "MODIFY_SAFE_PHONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->h:Lcom/xiaomi/accountsdk/account/data/g;

    .line 16
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/g;

    const-string v1, "CHANGE_PASSWORD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/xiaomi/accountsdk/account/data/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->i:Lcom/xiaomi/accountsdk/account/data/g;

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/g;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->a:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->b:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->c:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->d:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->e:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->f:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->g:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->h:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/g;->i:Lcom/xiaomi/accountsdk/account/data/g;

    aput-object v1, v0, v10

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/g;->j:[Lcom/xiaomi/accountsdk/account/data/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/g;
    .registers 2

    .line 3
    const-class v0, Lcom/xiaomi/accountsdk/account/data/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/g;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/g;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/g;->j:[Lcom/xiaomi/accountsdk/account/data/g;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/g;

    return-object v0
.end method
