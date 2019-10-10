.class public final enum Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum b:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum c:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum d:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field private static final synthetic e:[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 23
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 24
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v1, "ETAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 25
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v1, "ID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 26
    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v1, "UNIQUE_KEY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->e:[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
    .registers 2

    .line 22
    const-class v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
    .registers 1

    .line 22
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->e:[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    invoke-virtual {v0}, [Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-object v0
.end method
