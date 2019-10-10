.class Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidSigningUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FidSignerHolder"
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerImplDefault;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;->a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;
    .registers 1

    .line 16
    sget-object v0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;->a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;)Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;
    .registers 1

    .line 16
    sput-object p0, Lcom/xiaomi/accountsdk/utils/FidSigningUtil$FidSignerHolder;->a:Lcom/xiaomi/accountsdk/utils/FidSigningUtil$IFidSigner;

    return-object p0
.end method
