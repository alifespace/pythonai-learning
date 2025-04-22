import re # Example import if needed for implementation

def count_words(text: str) -> int:
    """
    Count the number of words in a given text.
    
    Args:
    text (str): The input text.
    
    Returns:
    int: The number of words in the text.

    Raises:
    TypeError: If the input 'text' is not a string.
    """
    if not isinstance(text, str):
        raise TypeError("Input 'text' must be a string.")
        
    if not text:
        return 0
    
    # Simple implementation: split by whitespace
    words = text.split() 
    return len(words)

    # Alternative using regex for potentially better handling (example)
    # words = re.findall(r'\b\w+\b', text)
    # return len(words)

result = count_words("Hello World, How are you?")
print(result)
print("Hello ")



