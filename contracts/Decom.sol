pragma solidity ^0.5.0;

contract Decom {

    event NewSeller(uint seller_id, string name, string addr, address wallet);

    address owner;
    mapping (uint => uint) internal sellerToProduct;
    mapping (uint => uint) internal buyerToProduct;

    struct Seller {
        string name;
        string addr;
        address wallet; 
    }

    struct Product {
        string name;
        int price;
        string imageLink;
    }

    Seller[] public sellerList;
    Product[] public productList; 

    constructor() public {
        owner = msg.sender;
    }

    function createSeller(string memory _name, string memory _addr, address _wallet) internal {

        uint seller_id = sellerList.push(Seller(_name, _addr, _wallet)) - 1;
        emit NewSeller(seller_id, _name, _addr, _wallet);
    }

    function createProduct(string memory _name, int _price, string memory _imageLink) internal {
        uint product_id = productList.push(Product(_name, _price, _imageLink));
    }

    // function showSellers() public view returns(Seller[]) {
    //     return sellerList;
    // }

    // function showProducts() public view returns(Product[]) {
    //     return productList;
    // }
}