.class public final enum Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

.field public static final enum b:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

.field private static final synthetic c:[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 24
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->a:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    const-string v1, "FEMALE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->b:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->a:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->b:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->c:[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 2

    .line 23
    const-class v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 1

    .line 23
    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->c:[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {v0}, [Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object v0
.end method
