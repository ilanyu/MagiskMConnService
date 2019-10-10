.class final enum Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/XMPassportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimpleDateFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

.field public static final enum b:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

.field public static final enum c:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

.field private static final synthetic e:[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 90
    new-instance v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const-string v1, "en_US"

    const-string v2, "MM-dd-yyyy"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->a:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    .line 91
    new-instance v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const-string v1, "en_not_US"

    const-string v2, "dd-MM-yyyy"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->b:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    .line 92
    new-instance v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const-string v1, "default_not_en"

    const-string v2, "yyyy-MM-dd"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->c:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    const/4 v0, 0x3

    .line 89
    new-array v0, v0, [Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    sget-object v1, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->a:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->b:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->c:Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->e:[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;
    .registers 2

    .line 89
    const-class v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;
    .registers 1

    .line 89
    sget-object v0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->e:[Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/XMPassportUtil$SimpleDateFormat;->d:Ljava/lang/String;

    return-object v0
.end method
