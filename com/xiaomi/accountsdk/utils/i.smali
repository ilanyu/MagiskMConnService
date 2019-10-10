.class public Lcom/xiaomi/accountsdk/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xiaomi/accountsdk/utils/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/xiaomi/accountsdk/utils/DiagnosisLog$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/DiagnosisLog$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/i;->a:Lcom/xiaomi/accountsdk/utils/j;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/j;
    .registers 1

    .line 47
    sget-object v0, Lcom/xiaomi/accountsdk/utils/i;->a:Lcom/xiaomi/accountsdk/utils/j;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/j;)V
    .registers 1

    .line 43
    sput-object p0, Lcom/xiaomi/accountsdk/utils/i;->a:Lcom/xiaomi/accountsdk/utils/j;

    return-void
.end method
