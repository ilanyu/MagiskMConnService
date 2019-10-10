.class public Lcom/xiaomi/accountsdk/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "accountsdk-%d.%d.%d"

    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/z;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/xiaomi/accountsdk/utils/z;->a:Z

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 14
    sget-boolean v0, Lcom/xiaomi/accountsdk/utils/z;->a:Z

    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 18
    sget-object v0, Lcom/xiaomi/accountsdk/utils/z;->b:Ljava/lang/String;

    return-object v0
.end method
